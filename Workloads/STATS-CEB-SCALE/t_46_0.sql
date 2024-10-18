SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 78
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 5.0
AND p.CommentCount >= 10
AND p.FavoriteCount <= 19.0
AND ph.PostHistoryTypeId = 13
AND v.BountyAmount <= 100.0
AND u.DownVotes >= 37

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;