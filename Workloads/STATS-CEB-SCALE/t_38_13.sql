SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 2
AND ph.PostHistoryTypeId = 6
AND u.Reputation >= 447
AND u.Reputation <= 3555
AND u.DownVotes <= 187
AND c.CreationDate >= 778
AND ph.CreationDate >= 975
AND u.CreationDate >= 231
AND u.CreationDate <= 648

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;