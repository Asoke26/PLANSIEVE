SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= -8
AND p.CommentCount <= 22
AND u.Views <= 3320
AND p.CreationDate >= 285
AND p.CreationDate <= 1317
AND u.CreationDate >= 506
AND u.CreationDate <= 861

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;