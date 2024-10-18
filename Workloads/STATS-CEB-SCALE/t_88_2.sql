SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 4
AND p.CommentCount >= 3
AND p.CommentCount <= 26
AND u.DownVotes = 5
AND u.UpVotes >= 93
AND u.UpVotes <= 252

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;