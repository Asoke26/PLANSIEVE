SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 8
AND p.Score <= 109
AND p.AnswerCount <= 136.0
AND p.CommentCount = 5

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;