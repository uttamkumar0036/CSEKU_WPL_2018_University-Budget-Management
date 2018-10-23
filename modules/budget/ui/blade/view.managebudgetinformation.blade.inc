<?php

include MODULES_BUDGET . 'bao/managebudgetinformationbao.inc';

$manageBudgetInformationBAO = new ManageBudgetInformationBAO();
$allBudgetSector = $manageBudgetInformationBAO->getAllBudgetSector();

if (isset($_POST['submit'])) {
	$budgetSectorId = $_POST['budget_sector_id'];
	$budgetAmount = $_POST['budget_amount'];
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
	$budgetSubsector->setBudgetAmount($budgetAmount);

	$manageBudgetInformationBAO->createBudgetInfromation($budgetSubsector);
}

$allBudgetSubsector = $manageBudgetInformationBAO->getAllBudgetSubsector();
