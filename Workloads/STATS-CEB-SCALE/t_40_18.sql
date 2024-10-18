SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 23
AND p.Score <= 29
AND p.AnswerCount <= 18.0
AND p.CommentCount = 1

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;