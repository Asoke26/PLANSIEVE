SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= -1
AND p.CommentCount <= 37
AND u.Views <= 67
AND p.CreationDate >= 872
AND p.CreationDate <= 1459
AND u.CreationDate >= 1173
AND u.CreationDate <= 1324

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;