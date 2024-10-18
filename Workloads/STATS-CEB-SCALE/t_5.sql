SELECT COUNT(*)
 FROM badges b,
posts p
WHERE p.AnswerCount>=0
AND p.AnswerCount<=4
AND p.CommentCount>=0
AND p.CommentCount<=17
AND b.Date<=1542

AND b.UserId = p.OwnerUserId;