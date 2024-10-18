SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 21
AND ph.PostHistoryTypeId = 9
AND c.CreationDate >= 580
AND c.CreationDate <= 1092
AND ph.CreationDate >= 1091
AND ph.CreationDate <= 1314
AND b.Date <= 1176

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;