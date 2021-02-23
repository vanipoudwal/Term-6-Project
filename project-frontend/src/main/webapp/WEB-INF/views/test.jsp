<%@ include file="header.jsp" %>

<style>
	h1{
		border-bottom: 3px solid #CC9900;
		color: #996600;
		font-size: 30px;
	}
	table, th , td{
		border: 1px solid grey;
		border-collapse: collapse;
		padding: 5px;
	}
	table tr:nth-child(odd){
		background-color: #F1F1F1;
	}
	table tr:nth-child(even){
		background-color: #FFFFFF;
	}
</style>

<div class="table responsive" data-ng-app="">
	<div class="table">
		<div data-ng-init="friends =[
                  {itemId : 1,Name : '24K Gold Biscuit',Price : 80000, Quantity: 1,Desc : 'This Is Pure 24K Gold Biscuit',Image: 'resources/images/nailpaint.jpg'},
                  {itemId : 2,Name : 'Pearl Plated Platinum Chain',Price : 25000, Quantity: 1,Desc : 'This Is Pearl Plated Platinum Chain',Image: 'resources/images/mobile.jpg'},
                  {itemId : 3,Name : 'Emerald Stone Ring',Price : 19000, Quantity: 1,Desc : 'An Ancient Time Emerald Stone Ring',Image: 'resources/images/earphone.jpg'},
                ]">
		</div>
		<div style="height: 50px;padding-left:240px;width:500px;">
			<label>
				Search Element <input data-ng-model="searchText">
			</label>
		</div>
		<section style="padding-left:200px">
			<table id="searchTextResults">
				<tr>
					<th>Item ID</th>
					<th>Item Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Description</th>
					<th>Image</th>
				</tr>
				<tr data-ng-repeat="search in friends | filter:searchText">
					<td>{{search.itemId}}</td>
					<td>{{search.groupName}}</td>
					<td>{{search.Name}}</td>
					<td>{{search.Price}}</td>
					<td>{{search.Quantity}}</td>
					<td>{{search.Desc}}</td>
					<td>
						<img data-ng-src="{{search.image}}" height="60" width="100" >
					</td>
				</tr>
			</table>
		</section>
	</div>
</div>
<br/>
<hr/>
<%@ include file="footer.jsp" %>

</body>
</html>