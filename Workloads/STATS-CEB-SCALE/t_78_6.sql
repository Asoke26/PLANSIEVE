SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.Score <= 14
AND p.AnswerCount <= 2.0
AND p.FavoriteCount >= 2.0
AND u.Reputation <= 926
AND v.CreationDate >= 427
AND b.Date <= 270

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;