SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 67
AND p.AnswerCount >= 8.0
AND p.AnswerCount <= 16.0
AND p.CommentCount >= 0
AND p.FavoriteCount <= 54.0
AND ph.PostHistoryTypeId = 35
AND v.BountyAmount <= 250.0
AND u.DownVotes >= 6

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;