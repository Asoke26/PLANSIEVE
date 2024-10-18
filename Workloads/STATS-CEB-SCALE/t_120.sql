SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId=2
AND p.AnswerCount<=4
AND p.CommentCount>=0
AND p.CommentCount<=12
AND p.FavoriteCount>=0
AND p.FavoriteCount<=89
AND u.Reputation<=705
AND ph.CreationDate>=200
AND ph.CreationDate<=1525
AND p.CreationDate<=1533
AND u.CreationDate>=36
AND u.CreationDate<=1533
AND b.Date>=28
AND b.Date<=1540

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;