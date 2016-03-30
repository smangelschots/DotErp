
using System;
using System.Runtime.Serialization;
using OfficeSoft.Data.Crud;

namespace OrderIt.Data.Models	
{
	public partial class City : ModelBase
	{
		public  City(){
              Initialize();
		}

                private Guid _Id;
                private string _Name;
                private Guid _CountryId;
                private string _PostalCode;
                private string _Province;
        
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
	    		public string Name 
        {
            get
            {
               return _Name;
            } 
            set
            {
                if(_Name != value){
                    SendPropertyChanging("Name");  
                    _Name = value;
                    SendPropertyChanged("Name"); 
                }
            }
        }
	    		public Guid CountryId 
        {
            get
            {
               return _CountryId;
            } 
            set
            {
                if(_CountryId != value){
                    SendPropertyChanging("CountryId");  
                    _CountryId = value;
                    SendPropertyChanged("CountryId"); 
                }
            }
        }
	    		public string PostalCode 
        {
            get
            {
               return _PostalCode;
            } 
            set
            {
                if(_PostalCode != value){
                    SendPropertyChanging("PostalCode");  
                    _PostalCode = value;
                    SendPropertyChanged("PostalCode"); 
                }
            }
        }
	    		public string Province 
        {
            get
            {
               return _Province;
            } 
            set
            {
                if(_Province != value){
                    SendPropertyChanging("Province");  
                    _Province = value;
                    SendPropertyChanged("Province"); 
                }
            }
        }
	        }
}
