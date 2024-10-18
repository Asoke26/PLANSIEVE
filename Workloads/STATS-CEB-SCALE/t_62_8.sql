SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 6
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 35.0
AND pl.LinkTypeId = 1
AND v.BountyAmount <= 100.0
AND u.Views <= 516
AND p.CreationDate <= 1333
AND pl.CreationDate >= 695
AND v.CreationDate >= 260
AND v.CreationDate <= 942
AND u.CreationDate >= 570
AND u.CreationDate <= 742

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;