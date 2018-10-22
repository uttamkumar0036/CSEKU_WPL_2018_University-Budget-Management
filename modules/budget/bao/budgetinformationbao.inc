<?php  

include MODULES_BUDGET . 'dao/budgetinformationdao.inc';

class BudgetInformationBAO
{
	private $_budgetInformationDAO;

	public function __construct(){
		$this->_budgetInformationDAO = new BudgetInformationDAO();
	}

	public function getBudgetSubsectorById($budgetSectorId) {
		$result = $this->_budgetInformationDAO->getBudgetSubsectorById($budgetSectorId);
		if ($result->getIsSuccess()) {
			return $result;
		}
		return null;
	}
}