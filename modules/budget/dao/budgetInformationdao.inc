<?php

include UTILITY . 'class.util.inc';
include COMMON . 'class.common.budget.inc';

class BudgetInformationDAO
{
	private $_db;

	public function __construct() {
		$this->_db = DBUtil::getInstance();
	}

	public function getBudgetSubsectorById($budgetSectorId) {
		$sql = "SELECT * FROM budget_subsector WHERE budget_sector_id = '$budgetSectorId'";
		$this->_db->doQuery($sql);
		$row = $this->_db->getTopRow();

		$budgetSubsector = new BudgetSubsector();
		$budgetSubsector->setBudgetSubsectorId($row['budget_subsector_id']);
		$budgetSubsector->setBudgetSectorId($row['budget_sector_id']);
		$budgetSubsector->setBudgetSubsectorName($row['budget_subsector_name']);
		$budgetSubsector->setStartDate($row['start_date']);
		$budgetSubsector->setEndDate($row['end_date']);
		$budgetSubsector->setBudgetProgress($row['budget_progress']);
		$budgetSubsector->setBudgetProgress($row['budget_description']);


		$result = new Result();
		$result->setIsSuccess(1);
		$result->setResultObject($budgetSubsector);

		return $result;
	}
}