SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 2
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 25.0
AND pl.LinkTypeId = 1
AND v.BountyAmount <= 75.0
AND u.Views <= 183
AND p.CreationDate <= 1403
AND pl.CreationDate >= 835
AND v.CreationDate >= 415
AND v.CreationDate <= 613
AND u.CreationDate >= 299
AND u.CreationDate <= 493

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;