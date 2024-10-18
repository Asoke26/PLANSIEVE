SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 17
AND p.Score <= 89
AND p.AnswerCount <= 5.0
AND p.CommentCount = 0

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;