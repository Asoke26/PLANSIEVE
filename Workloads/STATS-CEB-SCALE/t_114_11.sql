SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.Reputation >= 250
AND u.Reputation <= 7931
AND u.DownVotes >= 14
AND u.DownVotes <= 779
AND c.CreationDate <= 183
AND b.Date >= 1249

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;