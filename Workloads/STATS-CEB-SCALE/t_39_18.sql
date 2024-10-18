SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 43
AND p.CommentCount <= 17
AND u.Views <= 92
AND p.CreationDate >= 583
AND p.CreationDate <= 1033
AND u.CreationDate >= 943
AND u.CreationDate <= 1114

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;