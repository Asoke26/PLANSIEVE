SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 37
AND p.CommentCount <= 20
AND u.Views <= 134
AND p.CreationDate >= 239
AND p.CreationDate <= 1237
AND u.CreationDate >= 257
AND u.CreationDate <= 329

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;