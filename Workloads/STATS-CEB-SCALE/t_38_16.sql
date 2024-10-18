SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 11
AND ph.PostHistoryTypeId = 33
AND u.Reputation >= 142
AND u.Reputation <= 497
AND u.DownVotes <= 40
AND c.CreationDate >= 650
AND ph.CreationDate >= 742
AND u.CreationDate >= 138
AND u.CreationDate <= 1245

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;