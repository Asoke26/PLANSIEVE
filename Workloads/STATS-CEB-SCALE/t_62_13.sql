SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 0
AND p.AnswerCount >= 2.0
AND p.AnswerCount <= 16.0
AND pl.LinkTypeId = 1
AND v.BountyAmount <= 350.0
AND u.Views <= 1289
AND p.CreationDate <= 393
AND pl.CreationDate >= 731
AND v.CreationDate >= 868
AND v.CreationDate <= 981
AND u.CreationDate >= 32
AND u.CreationDate <= 1541

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;