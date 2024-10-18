SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score=0
AND ph.PostHistoryTypeId=1
AND c.CreationDate>=75
AND c.CreationDate<=1542
AND ph.CreationDate>=34
AND ph.CreationDate<=1544
AND b.Date<=1535

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;