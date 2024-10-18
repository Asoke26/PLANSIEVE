SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 9
AND ph.PostHistoryTypeId = 1
AND u.Reputation >= 399
AND u.Reputation <= 1006
AND u.DownVotes <= 214
AND c.CreationDate >= 1327
AND ph.CreationDate >= 693
AND u.CreationDate >= 233
AND u.CreationDate <= 1430

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;