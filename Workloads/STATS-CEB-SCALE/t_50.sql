SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score>=-2
AND p.ViewCount>=0
AND p.ViewCount<=18281
AND ph.PostHistoryTypeId=2
AND u.Views>=0
AND u.Views<=75
AND c.CreationDate>=39
AND c.CreationDate<=1543
AND b.Date>=120

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;