SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.AnswerCount >= 3.0
AND p.CommentCount >= 10
AND p.CommentCount <= 27
AND c.CreationDate >= 320
AND pl.CreationDate >= 1113
AND pl.CreationDate <= 1291
AND ph.CreationDate <= 1536
AND v.CreationDate >= 310
AND v.CreationDate <= 1348

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;