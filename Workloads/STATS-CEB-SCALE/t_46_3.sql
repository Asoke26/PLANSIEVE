SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 61
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 35.0
AND p.CommentCount >= 2
AND p.FavoriteCount <= 45.0
AND ph.PostHistoryTypeId = 14
AND v.BountyAmount <= 400.0
AND u.DownVotes >= 39

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;