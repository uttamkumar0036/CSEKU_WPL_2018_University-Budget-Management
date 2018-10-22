<?php include MODULES_BUDGET . 'ui/blade/view.budgetinformation.blade.inc'; ?>

<div class="container">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Budget Information</h4>
		</div>
		<div class="panel-body">
			<?php

				if (!is_null($budgetSubsectorByIdResult)) {
					$row = $budgetSubsectorByIdResult->getResultObject();
			?>
				<div>
					<p>Budget Sector Name: 
					<?php echo $row->getBudgetSubsectorName(); ?></p>
				</div>

				<div>
					<p>Budget Start Date:
					<?php echo $row->getStartDate(); ?></p>
				</div>

				<div>
					<p>Budget End Date:
					<?php echo $row->getEndDate(); ?></p>
				</div>
				<div>
					<p>Budget Progress:
					<?php echo $row->getBudgetProgress(); ?></p>
				</div>
				<div>
					<p>Budget Desciption:
					<?php echo $row->getBudgetDesciption(); ?></p>
				</div>
				
			<?php		
					
				}
			?>
		</div>
	</div>
</div>