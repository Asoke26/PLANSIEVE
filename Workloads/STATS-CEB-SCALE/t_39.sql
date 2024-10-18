SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId=1
AND p.Score>=-1
AND p.CommentCount<=8
AND u.Views<=40
AND p.CreationDate>=29
AND p.CreationDate<=1538
AND u.CreationDate>=34
AND u.CreationDate<=1542

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;