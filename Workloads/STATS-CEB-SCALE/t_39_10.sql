SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 0
AND p.CommentCount <= 27
AND u.Views <= 26
AND p.CreationDate >= 513
AND p.CreationDate <= 624
AND u.CreationDate >= 500
AND u.CreationDate <= 957

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;