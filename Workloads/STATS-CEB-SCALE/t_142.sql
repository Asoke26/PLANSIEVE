SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount<=4
AND p.FavoriteCount>=0
AND pl.LinkTypeId=1
AND v.VoteTypeId=2
AND c.CreationDate>=40
AND c.CreationDate<=1542
AND v.CreationDate<=1541
AND b.Date<=1502

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;