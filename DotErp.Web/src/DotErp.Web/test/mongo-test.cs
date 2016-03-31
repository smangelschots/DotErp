using Xunit

namespace DotErp.Web{




	public class MongoDbTest{


		string conn = '';

		public MongoDbTest(){

			var builder = new ConfigurationBuilder();
			var config = builder.Build();
			conn =config["Data:DefaultConnection:ConnectionString"];

		}

		[Fact]
		public void OpenConnection()
		{
			var con = new MongoConnectionStringBuilder(conn);
 			var server = MongoServer.Create(con);
			var db = server.GetDatabase(con.DatabaseName);
			//var collection = db.GetCollection<Post>("post");

		}

	}

}

