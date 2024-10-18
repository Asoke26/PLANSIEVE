SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 47
AND p.AnswerCount >= 2.0
AND p.AnswerCount <= 10.0
AND p.CommentCount >= 7
AND p.FavoriteCount <= 137.0
AND ph.PostHistoryTypeId = 2
AND v.BountyAmount <= 500.0
AND u.DownVotes >= 8

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;