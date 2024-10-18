SELECT COUNT(*)
 FROM badges b,
users u
WHERE u.UpVotes>=0

AND b.UserId = u.Id;