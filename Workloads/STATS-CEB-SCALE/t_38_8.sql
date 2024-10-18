SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 7
AND ph.PostHistoryTypeId = 34
AND u.Reputation >= 700
AND u.Reputation <= 15236
AND u.DownVotes <= 16
AND c.CreationDate >= 881
AND ph.CreationDate >= 526
AND u.CreationDate >= 107
AND u.CreationDate <= 1006

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;