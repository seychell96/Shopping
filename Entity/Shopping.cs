using System;

namespace Entity
{
	
	public class Gouwu
	{
		private int shangpingid;
		private string shangpingname;
		private decimal price;
		private int quantity;
		private decimal allprice;

		public int Shangpingid
		{
			get
			{
				return shangpingid;
			}
			set
			{
				shangpingid = value;
			}
		}
		public string Shangpingname
		{
			
			get
			{
				return shangpingname;
			}
			set
			{
				shangpingname = value;
			}
		}
		public decimal Price
		{
			get
			{
				return price;
			}
			set
			{
				price = value;
			}
		}
		public int Quantity
		{
			get
			{
				return quantity;
			}
			set
			{
				quantity = value;
			}
		}
		public decimal Allprice
		{
			get
			{
				return allprice;
			}
			set
			{
				allprice = value;
			}
		}


		public Gouwu()
		{
			
		}
	}
}
