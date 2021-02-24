CREATE VIEW FlightsView AS
    SELECT
        f.flight_id,
        f.from_d,
        f.to_d,
        f.date_of,
        f.time_of,
        f.model,
        p.seats
    FROM
        Flights AS f
        JOIN Planes AS p ON p.model = f.model
;