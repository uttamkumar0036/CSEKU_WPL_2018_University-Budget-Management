<?php

include MODULES_BUDGET . 'bao/managebudgetinformationbao.inc';

$manageBudgetInformationBAO = new ManageBudgetInformationBAO();
$allBudgetSector = $manageBudgetInformationBAO->getAllBudgetSector();

if (isset($_POST['submit'])) {
	//var_dump($_POST);
	$budgetSectorId = $_POST['budget_sector_id'];
	$startdate = $_POST['start_date'];
	$endDate = $_POST['end_date'];
	$budgetProgress = $_POST['budget_progress'];
	$description = $_POST['description'];

	$budgetSubsector = new BudgetSubsector();
	$budgetSubsector->setBudgetSectorId($budgetSectorId);
	$budgetSubsector->setStartDate($startdate);
	$budgetSubsector->setEndDate($endDate);
	$budgetSubsector->setBudgetProgress($budgetProgress);
	$budgetSubsector->setBudgetDescription($description);

	$manageBudgetInformationBAO->createBudgetInfromation($budgetSubsector);
}

$allBudgetSubsector = $manageBudgetInformationBAO->getAllBudgetSubsector();
