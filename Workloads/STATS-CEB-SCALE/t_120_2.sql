SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 7
AND p.AnswerCount <= 10.0
AND p.CommentCount >= 3
AND p.CommentCount <= 35

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;