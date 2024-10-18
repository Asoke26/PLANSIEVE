SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 3.0
AND p.CommentCount >= 1
AND u.Reputation >= 149
AND u.Reputation <= 3536
AND u.DownVotes >= 39
AND b.Date <= 106

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND p.Id = ph.PostId;