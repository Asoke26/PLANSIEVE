SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 1
AND ph.PostHistoryTypeId = 33
AND c.CreationDate >= 320
AND c.CreationDate <= 989
AND ph.CreationDate >= 632
AND ph.CreationDate <= 805
AND b.Date <= 1337

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;