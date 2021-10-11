using Microsoft.EntityFrameworkCore.Migrations;

namespace MovieReservationSystem.Migrations
{
    public partial class AddIsAvailableToSeatModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "id",
                table: "Seat",
                newName: "Id");

            migrationBuilder.AddColumn<bool>(
                name: "IsAvailable",
                table: "Seat",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsAvailable",
                table: "Seat");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Seat",
                newName: "id");
        }
    }
}
