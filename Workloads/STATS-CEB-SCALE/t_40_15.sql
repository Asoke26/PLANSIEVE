SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= -4
AND p.Score <= 113
AND p.AnswerCount <= 19.0
AND p.CommentCount = 25

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;