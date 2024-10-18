SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 3
AND ph.PostHistoryTypeId = 2
AND u.Reputation >= 644
AND u.Reputation <= 911
AND u.DownVotes <= 16
AND c.CreationDate >= 1051
AND ph.CreationDate >= 1264
AND u.CreationDate >= 263
AND u.CreationDate <= 1441

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;