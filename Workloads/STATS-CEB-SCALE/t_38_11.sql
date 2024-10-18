SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 1
AND ph.PostHistoryTypeId = 8
AND u.Reputation >= 735
AND u.Reputation <= 8814
AND u.DownVotes <= 17
AND c.CreationDate >= 114
AND ph.CreationDate >= 1384
AND u.CreationDate >= 152
AND u.CreationDate <= 599

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;