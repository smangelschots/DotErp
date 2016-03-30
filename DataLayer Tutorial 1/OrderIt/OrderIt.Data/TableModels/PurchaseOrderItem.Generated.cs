
using System;
using System.Runtime.Serialization;
using OfficeSoft.Data.Crud;

namespace OrderIt.Data.Models	
{
	public partial class PurchaseOrderItem : ModelBase
	{
		public  PurchaseOrderItem(){
              Initialize();
		}

                private Guid _Id;
                private Nullable<Guid> _PurchaseOrderId;
                private string _Description;
                private Nullable<Double> _Amount;
                private string _UnitOfMeasure;
                private Nullable<Decimal> _Price;
                private Nullable<int> _RowIndex;
        
	    		public Guid Id 
        {
            get
            {
               return _Id;
            } 
            set
            {
                if(_Id != value){
                    SendPropertyChanging("Id");  
                    _Id = value;
                    SendPropertyChanged("Id"); 
                }
            }
        }
	    		public Nullable<Guid> PurchaseOrderId 
        {
            get
            {
               return _PurchaseOrderId;
            } 
            set
            {
                if(_PurchaseOrderId != value){
                    SendPropertyChanging("PurchaseOrderId");  
                    _PurchaseOrderId = value;
                    SendPropertyChanged("PurchaseOrderId"); 
                }
            }
        }
	    		public string Description 
        {
            get
            {
               return _Description;
            } 
            set
            {
                if(_Description != value){
                    SendPropertyChanging("Description");  
                    _Description = value;
                    SendPropertyChanged("Description"); 
                }
            }
        }
	    		public Nullable<Double> Amount 
        {
            get
            {
               return _Amount;
            } 
            set
            {
                if(_Amount != value){
                    SendPropertyChanging("Amount");  
                    _Amount = value;
                    SendPropertyChanged("Amount"); 
                }
            }
        }
	    		public string UnitOfMeasure 
        {
            get
            {
               return _UnitOfMeasure;
            } 
            set
            {
                if(_UnitOfMeasure != value){
                    SendPropertyChanging("UnitOfMeasure");  
                    _UnitOfMeasure = value;
                    SendPropertyChanged("UnitOfMeasure"); 
                }
            }
        }
	    		public Nullable<Decimal> Price 
        {
            get
            {
               return _Price;
            } 
            set
            {
                if(_Price != value){
                    SendPropertyChanging("Price");  
                    _Price = value;
                    SendPropertyChanged("Price"); 
                }
            }
        }
	    		public Nullable<int> RowIndex 
        {
            get
            {
               return _RowIndex;
            } 
            set
            {
                if(_RowIndex != value){
                    SendPropertyChanging("RowIndex");  
                    _RowIndex = value;
                    SendPropertyChanged("RowIndex"); 
                }
            }
        }
	        }
}
