SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 28
AND p.Score <= 44
AND p.AnswerCount <= 5.0
AND p.CommentCount = 4

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;