﻿CREATE PROCEDURE [dbo].[spRooms_GetAvailableRooms]

	@startDate DATE,
	@endDate DATE,
	@roomTypeId INT

AS

BEGIN

	SET NOCOUNT ON;
		
	SELECT r.*
	FROM dbo.Rooms AS r
	INNER JOIN dbo.RoomTypes AS t ON t.Id = r.RoomTypeId
	WHERE r.RoomNumber = @roomTypeId AND r.Id NOT IN(
			SELECT b.RoomId
			FROM dbo.Bookings AS b
			WHERE (@startDate < b.StartDate AND @endDate > b.EndDate)
				OR(b.StartDate <= @endDate AND @endDate < b.EndDate)
				OR(b.StartDate <= @startDate AND @startDate < b.EndDate));

END