SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 6
AND p.Score <= 156
AND p.AnswerCount <= 26.0
AND p.CommentCount = 17

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;