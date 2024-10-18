SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 22
AND p.CommentCount >= 4
AND p.CommentCount <= 15
AND u.DownVotes = 0
AND u.UpVotes >= 99
AND u.UpVotes <= 120

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;