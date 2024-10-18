SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 129
AND p.AnswerCount >= 7.0
AND p.AnswerCount <= 18.0
AND p.CommentCount >= 4
AND p.FavoriteCount <= 127.0
AND ph.PostHistoryTypeId = 13
AND v.BountyAmount <= 250.0
AND u.DownVotes >= 48

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;