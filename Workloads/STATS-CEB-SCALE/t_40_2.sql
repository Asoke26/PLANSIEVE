SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 13
AND p.Score <= 32
AND p.AnswerCount <= 42.0
AND p.CommentCount = 14

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;