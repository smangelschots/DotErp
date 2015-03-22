
using System;
using System.Runtime.Serialization;
using OfficeSoft.Data.Crud;

namespace OrderIt.Data.Models	
{
	public partial class Vendor : ModelBase
	{
		public  Vendor(){
              Initialize();
		}

                private Guid _Id;
                private Nullable<Guid> _ContactId;
        
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
	    		public Nullable<Guid> ContactId 
        {
            get
            {
               return _ContactId;
            } 
            set
            {
                if(_ContactId != value){
                    SendPropertyChanging("ContactId");  
                    _ContactId = value;
                    SendPropertyChanged("ContactId"); 
                }
            }
        }
	        }
}
