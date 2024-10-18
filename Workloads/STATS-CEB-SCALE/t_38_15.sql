SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 6
AND ph.PostHistoryTypeId = 2
AND u.Reputation >= 53
AND u.Reputation <= 553
AND u.DownVotes <= 119
AND c.CreationDate >= 1242
AND ph.CreationDate >= 652
AND u.CreationDate >= 486
AND u.CreationDate <= 1507

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;