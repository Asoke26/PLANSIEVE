SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 7
AND ph.PostHistoryTypeId = 13
AND c.CreationDate >= 100
AND c.CreationDate <= 977
AND ph.CreationDate >= 639
AND ph.CreationDate <= 955
AND b.Date <= 597

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;