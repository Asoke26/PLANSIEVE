SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 0
AND ph.PostHistoryTypeId = 34
AND u.Reputation >= 210
AND u.Reputation <= 1102
AND u.DownVotes <= 5
AND c.CreationDate >= 1474
AND ph.CreationDate >= 725
AND u.CreationDate >= 762
AND u.CreationDate <= 997

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;