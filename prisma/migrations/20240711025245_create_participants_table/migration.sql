-- CreateTable
CREATE TABLE "Participant" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT,
    "email" TEXT NOT NULL,
    "is_confirmed" BOOLEAN NOT NULL DEFAULT false,
    "is_owner" BOOLEAN NOT NULL DEFAULT false,
    "trip_id" TEXT NOT NULL,
    CONSTRAINT "Participant_trip_id_fkey" FOREIGN KEY ("trip_id") REFERENCES "Trip" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
