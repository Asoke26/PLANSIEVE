SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= -13
AND p.CommentCount <= 7
AND u.Views <= 591
AND p.CreationDate >= 170
AND p.CreationDate <= 188
AND u.CreationDate >= 176
AND u.CreationDate <= 1206

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;