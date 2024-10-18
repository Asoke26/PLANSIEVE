SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 110
AND p.CommentCount <= 33
AND u.Views <= 585
AND p.CreationDate >= 39
AND p.CreationDate <= 819
AND u.CreationDate >= 46
AND u.CreationDate <= 1495

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;